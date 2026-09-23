.class Lcom/mycompany/app/web/TextSelectMenu$8;
.super Ljava/lang/Object;
.implements Landroid/webkit/ValueCallback;
.source "TextSelectMenu.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/web/TextSelectMenu;->onItem(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ActionMode;I)Z
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Landroid/webkit/ValueCallback<",
    "Ljava/lang/String;",
    ">;"
  }
.end annotation

.field final synthetic val$activity:Lcom/mycompany/app/web/WebViewActivity;

.method constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 2
  .line 264
    iput-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$8;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/MethodParameters;
    accessFlags = {
      4096
    }
    names = {
      null
    }
  .end annotation
  .registers 2
  .line 264
    check-cast p1, Ljava/lang/String;
    invoke-virtual { p0, p1 }, Lcom/mycompany/app/web/TextSelectMenu$8;->onReceiveValue(Ljava/lang/String;)V
    return-void
.end method

.method public final onReceiveValue(Ljava/lang/String;)V
  .registers 4
  .line 267
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$8;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;
    if-nez v0, :L0
    return-void
  :L0
  .line 270
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$8;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    invoke-static { p1 }, Lcom/mycompany/app/main/MainUtil;->X6(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ao:Ljava/lang/String;
  .line 271
    iget-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$8;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;
    const-string v0, "(function(){var tag='onActionTrans';var val=window.getSelection().toString();android.onJsResult(tag,val);})();"
    const/4 v1, 1
    invoke-static { p1, v0, v1 }, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    return-void
.end method
