.class Lcom/mycompany/app/dialog/DialogSetTmem$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetTmem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTmem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTmem$6;->a:Lcom/mycompany/app/dialog/DialogSetTmem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetTmem;->p0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTmem$6;->a:Lcom/mycompany/app/dialog/DialogSetTmem;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->j0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTmem;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTmem$6;->a:Lcom/mycompany/app/dialog/DialogSetTmem;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTmem;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

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
    if-eqz p2, :cond_6

    .line 10
    .line 11
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetTmem;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetTmem;->k0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTmem;->l0:Lcom/mycompany/app/dialog/DialogListBook;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    :goto_0
    return v1

    .line 26
    :cond_3
    if-eqz p2, :cond_4

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogSetTmem;->k0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 33
    .line 34
    :cond_4
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->G:I

    .line 35
    .line 36
    const/4 v0, 0x3

    .line 37
    if-ge p2, v0, :cond_5

    .line 38
    .line 39
    const/4 p2, 0x5

    .line 40
    :cond_5
    new-instance v0, Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 41
    .line 42
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogSetTmem;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 43
    .line 44
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetTmem$7;

    .line 45
    .line 46
    invoke-direct {v3, p1}, Lcom/mycompany/app/dialog/DialogSetTmem$7;-><init>(Lcom/mycompany/app/dialog/DialogSetTmem;)V

    .line 47
    .line 48
    .line 49
    const/16 v4, 0xb

    .line 50
    .line 51
    invoke-direct {v0, v2, v4, p2, v3}, Lcom/mycompany/app/dialog/DialogSeekSimple;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTmem;->k0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 55
    .line 56
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetTmem$8;

    .line 57
    .line 58
    invoke-direct {p2, p1}, Lcom/mycompany/app/dialog/DialogSetTmem$8;-><init>(Lcom/mycompany/app/dialog/DialogSetTmem;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 62
    .line 63
    .line 64
    return v1

    .line 65
    :cond_6
    invoke-static {p1, p2}, Lcom/mycompany/app/dialog/DialogSetTmem;->B(Lcom/mycompany/app/dialog/DialogSetTmem;I)V

    .line 66
    .line 67
    .line 68
    return v1
.end method
