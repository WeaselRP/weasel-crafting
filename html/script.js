

document.body.style.display = "none";

Items = null;
Level = 0;
lastID = 0;
mode = 0;
craftBtnText = "Craft Item(s)";

function getItemIMG(item){
    return "nui://ox_inventory/web/build/images/"+item+".png";
}

function fillData(){
    if (Items != null) {
        $(".grid-container").empty()
        $(".craftBtn").text(craftBtnText)
        for (i = 0; i < Items.length; i++) {
            if (Items[i].Level <= Level) {
                if(mode == 0){
                    $(".grid-container").append("<li class='grid-item' id="+i+"><img class='gridImage' src='"+getItemIMG(Items[i].Name)+"' id='icon'/><p class='itemLabel'>"+Items[i].DisplayName+"</p></li>");
                }else if (mode == 1){
                    $(".grid-container").append("<li class='grid-item' id="+i+"><img class='gridImage' src='"+getItemIMG(Items[i].Recipe[0][1])+"' id='icon'/><p class='itemLabel'>"+Items[i].Recipe[0][0]+"</p></li>");
                }
            }
        }
    }
}

function updateList(id, amount){
    $(".crafted-object").empty()
    $(".ingredients").empty()

    if(mode == 0){
        $(".object-name").text(Items[id].DisplayName + " x " + (Items[id].Quantity*amount));
        
        $(".crafted-object").prepend("<img src='"+getItemIMG(Items[id].Name)+"' id='icon'/>");

        for (i = 0; i < Items[id].Recipe.length; i ++) {
            if (Items[id].Recipe[i][4]) {
                $(".ingredients").prepend("<li class='ingredient'>"+Items[id].Recipe[i][2]*amount + " x " + Items[id].Recipe[i][0] +"</li>");
            } else {
                $(".ingredients").prepend("<li class='ingredient'>"+Items[id].Recipe[i][2] + " - " + Items[id].Recipe[i][0] +"</li>");
            }
        }
    }else if (mode == 1) {
        $(".object-name").text(Items[id].Recipe[0][0] + " x " + (Items[id].Recipe[0][2]*amount));
        $(".crafted-object").prepend("<img src='"+getItemIMG(Items[id].Recipe[0][1])+"' id='icon'/>");
        $(".ingredients").prepend("<li class='ingredient'>$"+Items[id].Quantity*amount + "</li>");
    }
}

$(function() {
    let gridItem = null
    window.addEventListener('message', function(event) {
        if (event.data.type == "enableui") {
            document.body.style.display = event.data.enable ? "block" : "none";
        } else if (event.data.type == "addCraftingItems") {
            let data = event.data;
            Items = data.Items;
            Level = event.data.Level;
            mode = 0;
            if (data.BtnText != null) {
                craftBtnText = data.BtnText;
            }
            fillData();
        }else if (event.data.type == "addShopItems") {
            let data = event.data;
            Items = data.Items;
            Level = event.data.Level;
            mode = 1;
            if (data.BtnText != null) {
                craftBtnText = data.BtnText;
            }
            fillData();
        }
    });
    
    document.onkeyup = function (data) {
        if (data.which == 27) {

            $.post('https://weasel-crafting/escape', JSON.stringify({}));
        }
    };

    $(document).on('click', '.grid-item', function(e) {
        gridItem = parseInt(this.id);
        $('.amount').select();
        let id = parseInt(this.id);
        if (id < Items.length && Items[id].Level <= Level) {
            lastID = id;
            let amount = $('.amount').val()
            amount = amount.replace(/\D/g,'');
            if (amount <= 0) {
                amount = 1;
            }
            updateList(id, amount);
        }
    });

    $(document).on('click', '.craftBtn', function(e) {
        let id = parseInt(gridItem);
        let amount = $('.amount').val()
        amount = amount.replace(/\D/g,'');
        if (amount <= 0) {
            amount = 1;
        }

        if (id < Items.length && Items[id].Level <= Level) {
            $.post('https://weasel-crafting/craft', JSON.stringify({
                Item: Items[id],
                Amount: amount
            }));
        }
    });

    $(document).on('keypress', '.amount', function(e) {
        if (e.which == 13) {
            let id = parseInt(gridItem);
            let amount = $('.amount').val()
            amount = amount.replace(/\D/g,'');
            if (amount <= 0) {
                amount = 1;
            }

            if (id < Items.length && Items[id].Level <= Level) {
                $.post('https://weasel-crafting/craft', JSON.stringify({
                    Item: Items[id],
                    Amount: amount
                }));
            }
        }
    });

    $('.amount').on('input', function() {
        let amount = $('.amount').val()
        amount = amount.replace(/\D/g,'');
        if (amount != "") {
            $('.amount').val(amount)
        }

        if (amount <= 0) {
            amount = 1;
        }
        updateList(lastID, amount);
    });

});

