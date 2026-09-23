.class Lcom/mycompany/app/editor/core/PhotoEditorView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/editor/core/PhotoEditorView$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/core/PhotoEditorView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1;->a:Lcom/mycompany/app/editor/core/PhotoEditorView$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1;->a:Lcom/mycompany/app/editor/core/PhotoEditorView$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/editor/core/PhotoEditorView$1;->f:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/editor/core/PhotoEditorView;->f:Landroid/widget/ImageView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1$1;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1$1;-><init>(Lcom/mycompany/app/editor/core/PhotoEditorView$1$1;Landroid/graphics/Bitmap;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1;->a:Lcom/mycompany/app/editor/core/PhotoEditorView$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/editor/core/PhotoEditorView$1;->c:Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;

    .line 4
    .line 5
    check-cast v0, Lcom/mycompany/app/editor/core/PhotoEditor$5;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/editor/core/PhotoEditor$5;->w()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
