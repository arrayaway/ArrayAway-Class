class Texture {
    canvas = document.createElement('canvas');
    context = this.canvas.getContext('2d');
    size;
    srcImgs;
    src;
    //static tileSrcSize = 32;

    /**
     * 
     * @param {string} type
     * @param {any} src
     * @param {Vector} size
     */
    constructor(type, src, size) {
        this.type = type;
        this.size = size;
        this.src = src;
        console.log("0");
        if (type == 'img') {
            let img = new Image();
            img.src = this.src + '?' + new Date().getTime();
            //img.setAttribute('crossOrigin', '');
            //img.crossOrigin = "Anonymous";
            let canvas = document.createElement('canvas');
            let context = canvas.getContext('2d');
            document.getElementById("body").appendChild(canvas);

            console.log("1");

            img.onload = function (event) {
                console.log("AHHH");
                //context.fillStyle = '#F00';
                //context.fillRect(0, 0, 400, 400);
                context.drawImage(this, 0, 0, this.width, this.height);
                context.restore();
                console.log(context.getImageData(5, 5, 1, 1));
            };
        } else {
            //fallback texture
            this.canvas.width = 10;
            this.canvas.height = 10;
            let context = this.context;

            context.save();
            context.fillStyle = src;
            context.beginPath();
            context.arc(5, 5, 5, 0, 2 * Math.PI);
            context.fill();
            context.restore();
        }
    }

    /**
     *
     * @param {number} x
     * @param {number} y
     * @param {CanvasRenderingContext2D} [context]
    */
    _getPixel(x, y, context = this.context) {
        return context.getImageData(x, y, 5, 5).data;
    }

    /**
     * gets tile from tile key 
     * @param {key} tileKey (color)
    */
    _getTile(tileKey) {
        return { src: 'tileMapImg.jpg', x: 10, y: 10, size: 32, };
    }

    /**
     * draws this.canvas on GAME.view at position
     * @param {Vector} position
     * @param {Vector} [size]
     */
    draw(position, size = this.size) {
        GAME.view.drawImage(this.canvas, position.x, position.y, size.x, size.y);
    }
}

class Vector extends DOMPoint {
    constructor(x, y) {
        super(x, y)
    }
}


let texture = new Texture('img', 'download.jpg', new Vector(/*x*/255, /*y*/255));