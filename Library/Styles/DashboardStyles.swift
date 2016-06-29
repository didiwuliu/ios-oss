import Prelude
import Prelude_UIKit
import UIKit

public let dashboardContextCellStyle = baseTableViewCellStyle()
  <> (UITableViewCell.lens.contentView • UIView.lens.layoutMargins) %~ {
    .init(topBottom: 32.0, leftRight: $0.left)
}

public let dashboardActivityButtonStyle = UIButton.lens.titleText(forState: .Normal)
  %~ { _ in Strings.dashboard_buttons_activity() }

public let dashboardStatTitleLabelStyle =
  UILabel.lens.textColor .~ .ksr_white
    <> UILabel.lens.font .~ .ksr_headline

public let dashboardStatSubtitleLabelStyle =
  UILabel.lens.textColor .~ .ksr_white
    <> UILabel.lens.font .~ .ksr_subhead

public let lastUpdatePublishedAtLabelStyle =
  UILabel.lens.font .~ .ksr_caption1
    <> UILabel.lens.textColor .~ .ksr_darkGrayText

public let dashboardMessagesButtonStyle = UIButton.lens.titleText(forState: .Normal)
  %~ { _ in  Strings.dashboard_buttons_messages() }

public let postUpdateButtonStyle = positiveButtonStyle
  <> UIButton.lens.titleText(forState: .Normal) %~ { _ in Strings.dashboard_buttons_post_update() }

public let dashboardShareButtonStyle = neutralButtonStyle
  <> UIButton.lens.titleText(forState: .Normal) %~ { _ in Strings.dashboard_buttons_share() }
  <> UIButton.lens.contentEdgeInsets .~ .init(topBottom: 12.0, leftRight: 32.0)

public let dashboardVideoCompletionPercentageLabelStyle =
  UILabel.lens.textColor .~ .ksr_darkGrayText
  <> UILabel.lens.font .~ UIFont.ksr_subhead.italicized

public let dashboardVideoExternalPlayCountLabelStyle =
  UILabel.lens.textColor .~ .ksr_darkGrayText
    <> UILabel.lens.font .~ .ksr_body

public let dashboardVideoInternalPlayCountLabelStyle =
  UILabel.lens.textColor .~ .ksr_green
    <> UILabel.lens.font .~ .ksr_body

public let dashboardVideoPlaysTitleLabelStyle =
  UILabel.lens.textColor .~ .ksr_darkGrayText
  <> UILabel.lens.font .~ .ksr_headline
  <> UILabel.lens.text %~ { _ in Strings.dashboard_graphs_video_title() }

public let dashboardVideoTotalPlaysCountLabelStyle =
  UILabel.lens.textColor .~ .ksr_black
    <> UILabel.lens.font .~ UIFont.ksr_title1.bolded

public let updateTitleTextFieldStyle = formFieldStyle
  <> UITextField.lens.placeholder %~ { _ in Strings.dashboard_post_update_compose_placeholder_title() }
  <> UITextField.lens.returnKeyType .~ .Next

public let updateBackersOnlyButtonStyle =
  UIButton.lens.titleText(forState: .Normal) %~ { _ in Strings.dashboard_post_update_compose_public_label() }
    <> UIButton.lens.titleText(forState: .Selected)
      %~ { _ in Strings.dashboard_post_update_compose_private_label() }

public let updateAttachmentsStackViewStyle = UIStackView.lens.alignment .~ .LastBaseline
  <> UIStackView.lens.distribution .~ .EqualSpacing
  <> UIStackView.lens.layoutMargins .~ .init(all: 4.0)
  <> UIStackView.lens.layoutMarginsRelativeArrangement .~ true
  <> UIStackView.lens.spacing .~ 4.0

public let updateBodyTextViewStyle = UITextView.lens.backgroundColor .~ .clearColor()
  <> UITextView.lens.font .~ .ksr_body
  <> UITextView.lens.textColor .~ .ksr_textDefault
  <> UITextView.lens.textContainerInset .~ .init(top: 20.0, left: 0.0, bottom: 0.0, right: 0.0)

public let updateAddAttachmentButtonStyle =
  UIButton.lens.contentEdgeInsets .~ .init(topBottom: 12.0, leftRight: 0.0)
    <> UIButton.lens.titleText(forState: .Normal)
      %~ { _ in Strings.dashboard_post_update_compose_attachment_buttons_add_attachment() }
