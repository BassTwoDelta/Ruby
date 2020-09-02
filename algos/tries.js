function Trie(){
    this.root = new trieNode("")
}

function trieNode(val, word){

    this.children = []
    this.val = val
    this.word = word 

    this.autocomp = (word)=>{
        runner = this.root
        words = []
        nodes = []
        for(let i = 0; i<word.length; i++){
            currentL = word[i]
            if(runner.children[this.dict[currentL]]){
                runner = runner.children[this.dict[currentL]]
            }
            else{
                return []
            }
        }
    
        /// some kind of loop
        for(let child of runner.children){
            if(child){
                nodes.push(child)
            }
        }
        runner = nodes.pop()
    
        // identify words to add to word list and add them to words[]
    
    
        //return words[] once you have traveled to every node
    }

}

function trieNode2(val){

    this.children = []
    this.val = null

}
