.class Lcom/mycompany/app/web/TextSelectMenu$7;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnDismissListener;
.source "TextSelectMenu.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/web/TextSelectMenu;->edit(Lcom/mycompany/app/web/WebViewActivity;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$activity:Lcom/mycompany/app/web/WebViewActivity;

.method constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 2
  .line 236
    iput-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$7;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
  .registers 3
  .line 239
    iget-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$7;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->dA:Lcom/mycompany/app/dialog/DialogSetPopup;
    if-eqz p1, :L0
  .line 240
    iget-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$7;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->dA:Lcom/mycompany/app/dialog/DialogSetPopup;
    invoke-virtual { p1 }, Lcom/mycompany/app/dialog/DialogSetPopup;->dismiss()V
  .line 241
    iget-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$7;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    const/4 v0, 0
    iput-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->dA:Lcom/mycompany/app/dialog/DialogSetPopup;
  :L0
    return-void
.end method
