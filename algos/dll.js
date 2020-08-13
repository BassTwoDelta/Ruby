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