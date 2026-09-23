.class Lcom/mycompany/app/web/TextSelectMenu$3;
.super Ljava/lang/Object;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.source "TextSelectMenu.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/web/TextSelectMenu;->apply(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ActionMode;)V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$actionMode:Landroid/view/ActionMode;

.field final synthetic val$activity:Lcom/mycompany/app/web/WebViewActivity;

.field final synthetic val$id:I

.method constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ActionMode;I)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 4
  .line 178
    iput-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$3;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    iput-object p2, p0, Lcom/mycompany/app/web/TextSelectMenu$3;->val$actionMode:Landroid/view/ActionMode;
    iput p3, p0, Lcom/mycompany/app/web/TextSelectMenu$3;->val$id:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
  .registers 4
  .line 181
    iget-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$3;->val$activity:Lcom/mycompany/app/web/WebViewActivity;
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$3;->val$actionMode:Landroid/view/ActionMode;
    iget v1, p0, Lcom/mycompany/app/web/TextSelectMenu$3;->val$id:I
    invoke-static { p1, v0, v1 }, Lcom/mycompany/app/web/TextSelectMenu;->onItem(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/ActionMode;I)Z
    move-result p1
    return p1
.end method
