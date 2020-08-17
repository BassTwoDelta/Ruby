function Bst(){
    this.root = null 
}

function BtNode(val){
    this.val = val
    this.left = null
    this.right = null


    this.min = function(){
        while(this.root != null)
            runner = this.root
            while(runner.left != null)
                runner = runner.left
                if(runner.left == null)
                    runner = min 
    }

    this.max = function(){
        while(this.root !=null)
            runner = this.root
            while(runner.right != null)
                runner = runner.right
                if(runner.right == null)
                    runner = max
    }

    this.add = function(val){
        if(!this.root){
            this.root = BtNode(val)
        }
        //if there is no root, the val equals the root 
        // if there is a root check to see if the val is greater or less than 
        // if the val is greater than the root move the val to the right 
        // if the val is less thatn the root move the val to the left  
        // 
    }

    this.contains = function(val){
        if(val == this.root)
            return true 
        else{
            runner = this.root
            while(true){
                if(runner == val){
                    return true
                }
                if(runner < val){
                    runner = runner.right
                }
                else{
                    runner = runner.left
                }
                if(runner == null){
                    return false
                }
            }
        }
    }
}
        


