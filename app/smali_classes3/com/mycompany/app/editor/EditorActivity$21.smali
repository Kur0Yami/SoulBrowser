.class Lcom/mycompany/app/editor/EditorActivity$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/EditorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$21;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$21;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/editor/EditorActivity;->C1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/editor/EditorActivity;->C1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->h(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p1, Lcom/mycompany/app/editor/EditorActivity;->K1:Lcom/mycompany/app/view/MyButtonImage;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->f(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p1, Lcom/mycompany/app/editor/EditorActivity;->f1:Landroid/content/Context;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/mycompany/app/editor/EditorActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 29
    .line 30
    sget v2, Lnet/kaki87/soul2/testing/R$anim;->ic_slide_out:I

    .line 31
    .line 32
    invoke-static {v0, p1, v2, v1}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method
