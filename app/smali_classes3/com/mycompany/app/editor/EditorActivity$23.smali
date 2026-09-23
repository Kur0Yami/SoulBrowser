.class Lcom/mycompany/app/editor/EditorActivity$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/editor/core/PhotoEditor$PhotoListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/EditorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$23;->a:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/EditorActivity$23;->a:Lcom/mycompany/app/editor/EditorActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Lcom/mycompany/app/editor/EditorActivity;->A1:Lcom/mycompany/app/view/MyButtonImage;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final b(Landroid/widget/FrameLayout;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/EditorActivity$23;->a:Lcom/mycompany/app/editor/EditorActivity;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/mycompany/app/editor/EditorActivity;->v0(Lcom/mycompany/app/editor/EditorActivity;Landroid/widget/FrameLayout;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
