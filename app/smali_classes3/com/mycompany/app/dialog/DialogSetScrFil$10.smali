.class Lcom/mycompany/app/dialog/DialogSetScrFil$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetScrFil;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetScrFil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil$10;->c:Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil$10;->c:Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetScrFil;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetScrFil;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetScrFil;->B()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetScrFil;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogLinear;->setFilterColor(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetScrFil;->c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v1, v0}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetScrFil;->j0:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSetScrFil;->j0:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method
