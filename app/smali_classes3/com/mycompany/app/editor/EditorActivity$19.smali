.class Lcom/mycompany/app/editor/EditorActivity$19;
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
    iput-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$19;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$19;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/editor/EditorActivity;->l1:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/editor/EditorActivity;->z0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/editor/EditorActivity;->V1:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditorEmoji;->dismiss()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p1, Lcom/mycompany/app/editor/EditorActivity;->V1:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 24
    .line 25
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/editor/EditorActivity;->l1:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 32
    .line 33
    new-instance v2, Lcom/mycompany/app/editor/EditorActivity$37;

    .line 34
    .line 35
    invoke-direct {v2, p1}, Lcom/mycompany/app/editor/EditorActivity$37;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p1, v0, v2}, Lcom/mycompany/app/dialog/DialogEditorEmoji;-><init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p1, Lcom/mycompany/app/editor/EditorActivity;->V1:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 42
    .line 43
    new-instance v0, Lcom/mycompany/app/editor/EditorActivity$38;

    .line 44
    .line 45
    invoke-direct {v0, p1}, Lcom/mycompany/app/editor/EditorActivity$38;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
