.class Lcom/mycompany/app/dialog/DialogEditorText$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditorText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorText$3;->a:Lcom/mycompany/app/dialog/DialogEditorText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorText$3;->a:Lcom/mycompany/app/dialog/DialogEditorText;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditorText$3$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogEditorText$3$1;-><init>(Lcom/mycompany/app/dialog/DialogEditorText$3;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
