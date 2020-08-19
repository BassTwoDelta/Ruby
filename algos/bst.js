function Bst(){
    this.root = null 

    this.walk = function(){
        children= []
        runner = this.root
        if(this.root.left){
            children.push(this.root.left)
        }
        if(this.root.right){
            children.push(this.root.right)
        }
        while(children.length){
            runner = children.pop()
            if(runner.left){
                children.push(this.root.left)
            }
            if(runner.right){
                children.push(this.root.right)
            }

            console.log(runner.val)
    
        }
    }
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

    this.height = function(node = this.root){
        if(node.left == null && node.right == null){
            return 1
        }
        leftr = height(node.left)
        rightr = height(node.right)
        if(leftr > rightr){
            return leftr + 1
        }
        else{
            return rightr + 1
        }
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

bst = new Bst()
n1 = new BtNode(1)
n2 = new BtNode(2)
n3 = new BtNode(3)
n4 = new BtNode(4)
n5 = new BtNode(5)
n6 = new BtNode(6)
n7 = new BtNode(7)
        
bst.root = n1
n1.left = n2
n1.right = n3
n2.left = n4
n2.right = n5
n3.left = n6
n3.right = n7


