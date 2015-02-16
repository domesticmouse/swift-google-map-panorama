import UIKit

class ViewController: UIViewController, GMSPanoramaViewDelegate {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    var panoView = GMSPanoramaView(frame: CGRectZero)
    self.view = panoView
    
    panoView.moveNearCoordinate(CLLocationCoordinate2DMake(-33.732, 150.312))
    panoView.delegate = self
    
  }
  
  // MARK: - GMSPanoramaViewDelegate
  func panoramaView(view: GMSPanoramaView!, error: NSError!, onMoveNearCoordinate coordinate: CLLocationCoordinate2D) {
    println("Moving near coordinate (\(coordinate.latitude),\(coordinate.longitude) error: \(error.localizedDescription)")
  }
  
  func panoramaView(view: GMSPanoramaView!, error: NSError!, onMoveToPanoramaID panoramaID: String!) {
    println("Moving to PanoID \(panoramaID) error: \(error.localizedDescription)")
  }
  
  func panoramaView(view: GMSPanoramaView!, didMoveToPanorama panorama: GMSPanorama!) {
    println("Moved to panoramaID: \(panorama.panoramaID) " +
      "coordinates: (\(panorama.coordinate.latitude),\(panorama.coordinate.longitude))")
  }
}

