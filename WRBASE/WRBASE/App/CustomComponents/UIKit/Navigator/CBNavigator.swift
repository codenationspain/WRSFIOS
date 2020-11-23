//
import Foundation
import UIKit

public class CBNavigator: UIView {
    
    public var url: String = "about:blank" {
        didSet {
            webView.load(URLRequest(url: URL(string: url)!))
        }
    }
    
    var webView: CBWebView = {
        let webView = CBWebView(frame: .zero)
        webView.translatesAutoresizingMaskIntoConstraints = false
        return webView
    }()
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView() {
        addSubview(webView)
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: topAnchor),
            webView.leadingAnchor.constraint(equalTo: leadingAnchor),
            webView.bottomAnchor.constraint(equalTo: bottomAnchor),
            webView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
