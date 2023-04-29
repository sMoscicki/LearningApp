import Foundation

class ContentModel: ObservableObject {
    
    //List of modules
    @Published var modules = [Module]()
    
    //Current module
    @Published var currentModule: Module?
    var currentModuleIndex = 0
    
    var styleData: Data?
    
 
    init(){
        
        getLocalData()
        
    }
    
    func getLocalData(){
        
        //Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do{
            //Read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            //Try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            //Assign parsed modules to modules property
            self.modules = modules
            
        }catch{
            print(error)
        }
        
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do{
            //Read the file into a data object
            let styleData = try Data(contentsOf: styleUrl!)
  
            self.styleData = styleData
        }catch{
            print(error)
        }
        
    }
    
    func beginModule(_ moduleid: Int){
        
        for index in 0..<modules.count{
            if modules[index].id == moduleid {
                currentModuleIndex = index
                break
            }
        }
        currentModule = modules[currentModuleIndex]
    }
    
}
