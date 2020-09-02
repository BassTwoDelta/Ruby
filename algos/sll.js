function SLNode(val){
    this.val = val 
    this.next = null
    this.child = null
}

function SLList(){
    this.head = null;
    this.back

    this.popBack

    this.pushFront = function(value){
        var oldHead = this.head;
        this.head= new SLNode(value);
        this.head.next = oldHead;
        return self
        
    }

    this.pushBack = function(value){
        var newNode = new SLNode(value);
        if(!this.head){
            this.head = newNode;
        }
        else {
            var runner = this.head; 
            while (runner.next){
                runner = runner.next; 
            }
            runner.next = newNode;
        }
    }

    this.popFront
    this.contains
    this.removeVal

    this.reverse = function(head){


}
}
