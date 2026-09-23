.class Lcom/mycompany/app/editor/EditorActivity$11;
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
    iput-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$11;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$11;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/editor/EditorActivity;->x1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 9
    .line 10
    xor-int/lit8 v2, v1, 0x1

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 14
    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p1, Lcom/mycompany/app/editor/EditorActivity;->f1:Landroid/content/Context;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/mycompany/app/editor/EditorActivity;->y1:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_slide_in:I

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, p1, v1, v2}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/editor/EditorActivity;->f1:Landroid/content/Context;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/mycompany/app/editor/EditorActivity;->y1:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_slide_out:I

    .line 34
    .line 35
    invoke-static {v0, p1, v1, v3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
