.class Lcom/mycompany/app/dialog/DialogAllowPopup$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogAllowPopup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogAllowPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogAllowPopup$6;->a:Lcom/mycompany/app/dialog/DialogAllowPopup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->s0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAllowPopup$6;->a:Lcom/mycompany/app/dialog/DialogAllowPopup;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->j0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    sget-object p1, Lcom/mycompany/app/setting/SettingClean;->A2:[I

    .line 2
    .line 3
    rem-int/lit8 p2, p2, 0x4

    .line 4
    .line 5
    aget p1, p1, p2

    .line 6
    .line 7
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogAllowPopup$6;->a:Lcom/mycompany/app/dialog/DialogAllowPopup;

    .line 8
    .line 9
    iget v0, p2, Lcom/mycompany/app/dialog/DialogAllowPopup;->m0:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput p1, p2, Lcom/mycompany/app/dialog/DialogAllowPopup;->m0:I

    .line 16
    .line 17
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->q:I

    .line 18
    .line 19
    iget-object v0, p2, Lcom/mycompany/app/dialog/DialogAllowPopup;->b0:Landroid/content/Context;

    .line 20
    .line 21
    const/16 v2, 0xe

    .line 22
    .line 23
    const-string v3, "mPopBlock2"

    .line 24
    .line 25
    invoke-static {v0, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p2, Lcom/mycompany/app/dialog/DialogAllowPopup;->i0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    sget-object v2, Lcom/mycompany/app/setting/SettingClean;->y2:[I

    .line 33
    .line 34
    aget v2, v2, p1

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p2, Lcom/mycompany/app/dialog/DialogAllowPopup;->i0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 41
    .line 42
    sget-object v0, Lcom/mycompany/app/setting/SettingClean;->z2:[I

    .line 43
    .line 44
    aget p1, v0, p1

    .line 45
    .line 46
    invoke-virtual {p2, v3, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->C(II)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return v1
.end method
