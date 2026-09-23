.class Lcom/mycompany/app/dialog/DialogEditArea$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$15;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogEditArea;->E0:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$15;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditArea;->p0:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditCmd;->dismiss()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogEditArea;->p0:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogEditArea;->B0:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->H:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogEditArea;->B0:Z

    .line 25
    .line 26
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditArea;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
