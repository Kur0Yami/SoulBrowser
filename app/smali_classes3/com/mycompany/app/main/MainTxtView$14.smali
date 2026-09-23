.class Lcom/mycompany/app/main/MainTxtView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$14;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/main/MainTxtView;->X2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView$14;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainTxtView;->M0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/main/MainTxtView;->H2:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekAudio;->dismiss()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p1, Lcom/mycompany/app/main/MainTxtView;->H2:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 21
    .line 22
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 23
    .line 24
    invoke-direct {v0, p1, v1}, Lcom/mycompany/app/dialog/DialogSeekAudio;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p1, Lcom/mycompany/app/main/MainTxtView;->H2:Lcom/mycompany/app/dialog/DialogSeekAudio;

    .line 28
    .line 29
    new-instance v1, Lcom/mycompany/app/main/MainTxtView$41;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Lcom/mycompany/app/main/MainTxtView$41;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object p1, p1, Lcom/mycompany/app/main/MainTxtView;->N1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method
