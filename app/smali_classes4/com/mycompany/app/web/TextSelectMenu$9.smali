.class Lcom/mycompany/app/web/TextSelectMenu$9;
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

.field final synthetic val$actionMode:Landroid/view/ActionMode;

.field final synthetic val$activity:Lcom/mycompany/app/web/WebViewActivity;

.field final synthetic val$id:I

.method constructor <init>(Lcom/mycompany/app/web/WebViewActivity;ILandroid/view/ActionMode;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 4
  .line 278
    iput-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$9;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    iput p2, p0, Lcom/mycompany/app/web/TextSelectMenu$9;->val$id:I
    iput-object p3, p0, Lcom/mycompany/app/web/TextSelectMenu$9;->val$actionMode:Landroid/view/ActionMode;
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
  .line 278
    check-cast p1, Ljava/lang/String;
    invoke-virtual { p0, p1 }, Lcom/mycompany/app/web/TextSelectMenu$9;->onReceiveValue(Ljava/lang/String;)V
    return-void
.end method

.method public final onReceiveValue(Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L5
  .catch Ljava/lang/Exception; { :L7 .. :L8 } :L8
  .registers 5
  .line 281
    invoke-static { p1 }, Lcom/mycompany/app/web/TextSelectMenu;->-$$Nest$smunwrapJsString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 282
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
  .line 283
    iget-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$9;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    sget v0, Lnet/kaki87/soul2/testing/R$string;->empty:I
    invoke-static { p1, v0 }, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V
    return-void
  :L0
  .line 286
    iget v0, p0, Lcom/mycompany/app/web/TextSelectMenu$9;->val$id:I
    if-nez v0, :L1
  .line 287
    sget v0, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I
    iget-object v1, p0, Lcom/mycompany/app/web/TextSelectMenu$9;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    const-string v2, "Copied text"
    invoke-static { v0, v1, v2, p1 }, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    return-void
  :L1
    const/4 v1, 1
    const/4 v2, 0
    if-ne v0, v1, :L2
  .line 291
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$9;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    invoke-virtual { v0, p1, v2 }, Lcom/mycompany/app/web/WebViewActivity;->m8(Ljava/lang/String;Ljava/lang/String;)V
    return-void
  :L2
    const/4 v1, 3
    if-ne v0, v1, :L3
  .line 295
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$9;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    invoke-static { v0, p1 }, Lcom/mycompany/app/web/TextSelectMenu;->-$$Nest$smsearchUrl(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1, v2 }, Lcom/mycompany/app/web/WebViewActivity;->S5(Ljava/lang/String;Ljava/lang/String;)V
    return-void
  :L3
    const/4 v1, 5
    if-ne v0, v1, :L6
  :L4
  .line 300
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$9;->val$actionMode:Landroid/view/ActionMode;
    invoke-virtual { v0 }, Landroid/view/ActionMode;->finish()V
  :L5
  .line 303
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$9;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    invoke-static { v0, p1 }, Lcom/mycompany/app/web/TextSelectMenu;->-$$Nest$smsearchUrl(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    const/4 v1, 0
    invoke-virtual { v0, p1, v1, v2, v1 }, Lcom/mycompany/app/web/WebViewActivity;->G9(Ljava/lang/String;ILjava/lang/String;Z)V
    return-void
  :L6
    const/4 v1, 6
    if-ne v0, v1, :L9
  :L7
  .line 308
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$9;->val$actionMode:Landroid/view/ActionMode;
    invoke-virtual { v0 }, Landroid/view/ActionMode;->finish()V
  :L8
  .line 311
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$9;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    invoke-virtual { v0, p1 }, Lcom/mycompany/app/web/WebViewActivity;->i5(Ljava/lang/String;)V
  :L9
    return-void
.end method
