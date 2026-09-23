.class Lcom/mycompany/app/dialog/DialogViewRead$81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$81;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$81;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->N0:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->dismiss()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->N0:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->f2:Ljava/lang/String;

    .line 18
    .line 19
    iget v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->r0:I

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewRead$81$1;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogViewRead$81$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$81;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method
