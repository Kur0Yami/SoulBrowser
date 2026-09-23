.class Lcom/mycompany/app/web/TextSelectMenu$2;
.super Ljava/lang/Object;
.implements Landroid/view/ActionMode$Callback;
.source "TextSelectMenu.java"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lcom/mycompany/app/web/TextSelectMenu;->wrap(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic val$host:Landroid/view/View;

.field final synthetic val$original:Landroid/view/ActionMode$Callback;

.method constructor <init>(Landroid/view/ActionMode$Callback;Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()V"
    }
  .end annotation
  .registers 3
  .line 97
    iput-object p1, p0, Lcom/mycompany/app/web/TextSelectMenu$2;->val$original:Landroid/view/ActionMode$Callback;
    iput-object p2, p0, Lcom/mycompany/app/web/TextSelectMenu$2;->val$host:Landroid/view/View;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
  .registers 4
  .line 116
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$2;->val$original:Landroid/view/ActionMode$Callback;
    invoke-interface { v0, p1, p2 }, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    move-result p1
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
  .registers 4
  .line 100
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$2;->val$original:Landroid/view/ActionMode$Callback;
    invoke-interface { v0, p1, p2 }, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    move-result p2
    if-eqz p2, :L0
  .line 102
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$2;->val$host:Landroid/view/View;
    invoke-static { v0, p1 }, Lcom/mycompany/app/web/TextSelectMenu;->applyFrom(Landroid/view/View;Landroid/view/ActionMode;)V
  :L0
    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
  .registers 3
  .line 121
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$2;->val$original:Landroid/view/ActionMode$Callback;
    invoke-interface { v0, p1 }, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
  .registers 4
  .line 109
    iget-object v0, p0, Lcom/mycompany/app/web/TextSelectMenu$2;->val$original:Landroid/view/ActionMode$Callback;
    invoke-interface { v0, p1, p2 }, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
  .line 110
    iget-object p2, p0, Lcom/mycompany/app/web/TextSelectMenu$2;->val$host:Landroid/view/View;
    invoke-static { p2, p1 }, Lcom/mycompany/app/web/TextSelectMenu;->applyFrom(Landroid/view/View;Landroid/view/ActionMode;)V
    const/4 p1, 1
    return p1
.end method
