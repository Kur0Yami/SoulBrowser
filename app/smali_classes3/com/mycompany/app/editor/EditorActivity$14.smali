.class Lcom/mycompany/app/editor/EditorActivity$14;
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
    iput-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$14;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/editor/EditorActivity;->l2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$14;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/editor/EditorActivity;->z0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/editor/EditorActivity;->x0()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p1, Lcom/mycompany/app/editor/EditorActivity;->Y1:Z

    .line 17
    .line 18
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 21
    .line 22
    sget v1, Lnet/kaki87/soul2/testing/R$string;->reset_confirm:I

    .line 23
    .line 24
    sget v2, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 25
    .line 26
    new-instance v3, Lcom/mycompany/app/editor/EditorActivity$29;

    .line 27
    .line 28
    invoke-direct {v3, p1}, Lcom/mycompany/app/editor/EditorActivity$29;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p1, Lcom/mycompany/app/editor/EditorActivity;->R1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 35
    .line 36
    new-instance v1, Lcom/mycompany/app/editor/EditorActivity$30;

    .line 37
    .line 38
    invoke-direct {v1, p1}, Lcom/mycompany/app/editor/EditorActivity$30;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
