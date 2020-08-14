function DLnode(val){
    this.val = val
    this.next = null
    this.prev = null
}

function DlList(){

    this.head= null
    this.tail= null 

    this.push = function(val){
        if(!this.head){
            this.head = new DLnode(val)
            this.tail = this.head 
        }else{
            newNode = new DLnode(val)
            this.tail.next = newNode 
            newNode.prev = this.tail 
            this.tail = newNode 
            // the tail point to new node  
            // the tail next is the new node 
            // new node prev points to the tail 

            // runner = this.head
            //     while(runner.next != null)
            //         runner = runner.next
            //         if(runner == null) 
            //             runner.next = new DLnode(val)
            //             this.tail = runner.next
            //             this.tail.next = null
            // new node next = null, new node previous = this.tail 
            //this.tail equals the new node this.tail.next = null 
            // 
            // tail to point to new node 

        }
    }

    this.contains = function(val){
        runner = this.head
        if(runner != val){
            runner = runner.next
        }else{
            return true
        }
    }



}