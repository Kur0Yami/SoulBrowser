.class Lcom/mycompany/app/dialog/DialogSetScrFil$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/dialog/DialogSetScrFil;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetScrFil;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil$7;->b:Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetScrFil$7;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->p0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetScrFil$7;->b:Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->i0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetScrFil;->i0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil$7;->b:Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetScrFil;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/mycompany/app/main/MainConst;->W:[I

    .line 10
    .line 11
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetScrFil$7;->a:I

    .line 12
    .line 13
    rem-int/2addr p2, v2

    .line 14
    aget p2, v0, p2

    .line 15
    .line 16
    iget v0, p1, Lcom/mycompany/app/dialog/DialogSetScrFil;->l0:I

    .line 17
    .line 18
    if-ne v0, p2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetScrFil;->l0:I

    .line 22
    .line 23
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetScrFil;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    sget-object v2, Lcom/mycompany/app/main/MainConst;->X:[I

    .line 28
    .line 29
    aget p2, v2, p2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v2, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetScrFil;->B()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetScrFil;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyDialogLinear;->setFilterColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetScrFil;->c0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-interface {p1, p2}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    return v1
.end method
