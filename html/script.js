

document.body.style.display = "none";

Items = null;
Level = 0;
lastID = 0;


function getItemIMG(item){
    return "nui://linden_inventory/html/images/"+item+".png";
}

function fillData(){
    if (Items != null) {
        $(".grid-container").empty()
        for (i = 0; i < Items.length; i++) {
            if (Items[i].Level <= Level) {
                $(".grid-container").append("<li class='grid-item' id="+i+"><img src='"+getItemIMG(Items[i].Name)+"' id='icon'/></li>");
            }
        }
    }
}

$(function() {
    window.addEventListener('message', function(event) {
        if (event.data.type == "enableui") {
            document.body.style.display = event.data.enable ? "block" : "none";
            Level = event.data.Level
        } else if (event.data.type == "addItems") {
            let data = event.data;
            Items = data.Items;
            fillData();
        }
    });
    
    document.onkeyup = function (data) {
        if (data.which == 27) {

            $.post('https://weasel-crafting/escape', JSON.stringify({}));
        }
    };

    $(document).on('mouseover', '.grid-item', function(e) {
        let id = parseInt(this.id);
        if (id < Items.length && Items[id].Level <= Level) {
            lastID = id;
            let amount = $('.amount').val()
            amount = amount.replace(/\D/g,'');
            if (amount <= 0) {
                amount = 1;
            }

            $(".object-name").text(Items[id].DisplayName + " x " + (Items[id].Quantity*amount));
            $(".crafted-object").empty()
            $(".ingredients").empty()
            $(".crafted-object").prepend("<img src='"+getItemIMG(Items[id].Name)+"' id='icon'/>");
            for (i = 0; i < Items[id].Recipe.length; i ++) {
                if (Items[lastID].Recipe[i][4]) {
                    $(".ingredients").prepend("<li class='ingredient'>"+Items[lastID].Recipe[i][2]*amount + " x " + Items[lastID].Recipe[i][0] +"</li>")
                } else {
                    $(".ingredients").prepend("<li class='ingredient'>"+Items[lastID].Recipe[i][2] + " - " + Items[lastID].Recipe[i][0] +"</li>")
                }
            }
        }
    });

    $(document).on('click', '.grid-item', function(e) {
        let id = parseInt(this.id);
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

    $('.amount').on('input', function() {
        let amount = $('.amount').val()
        amount = amount.replace(/\D/g,'');
        if (amount != "") {
            $('.amount').val(amount)
        }

        if (amount <= 0) {
            amount = 1;
        }
        
        $(".object-name").text(Items[lastID].DisplayName + " x " + (Items[lastID].Quantity*amount));
        $(".crafted-object").empty()
        $(".ingredients").empty()
        $(".crafted-object").prepend("<img src='"+getItemIMG(Items[lastID].Name)+"' id='icon'/>");
        for (i = 0; i < Items[lastID].Recipe.length; i ++) {
            if (Items[lastID].Recipe[i][4]) {
                $(".ingredients").prepend("<li class='ingredient'>"+Items[lastID].Recipe[i][2]*amount + " x " + Items[lastID].Recipe[i][0] +"</li>")
            } else {
                $(".ingredients").prepend("<li class='ingredient'>"+Items[lastID].Recipe[i][2] + " - " + Items[lastID].Recipe[i][0] +"</li>")
            }
        }
    });

});

