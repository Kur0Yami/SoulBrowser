.class Lcom/mycompany/app/dialog/DialogSetImage$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetImage$9;->a:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetImage;->E0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage$9;->a:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImage;->m0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetImage;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    sget-object p1, Lcom/mycompany/app/main/MainConst;->f0:[I

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    rem-int/2addr p2, v0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    move v1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    sget v2, Lcom/mycompany/app/dialog/DialogSetImage;->E0:I

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetImage$9;->a:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 14
    .line 15
    iget-boolean v3, v2, Lcom/mycompany/app/dialog/DialogSetImage;->d0:Z

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    iget-boolean v4, v2, Lcom/mycompany/app/dialog/DialogSetImage;->x0:Z

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-boolean v4, v2, Lcom/mycompany/app/dialog/DialogSetImage;->B0:Z

    .line 23
    .line 24
    :goto_1
    if-ne v4, v1, :cond_2

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_2
    if-eqz v3, :cond_3

    .line 28
    .line 29
    iput-boolean v1, v2, Lcom/mycompany/app/dialog/DialogSetImage;->x0:Z

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_3
    iput-boolean v1, v2, Lcom/mycompany/app/dialog/DialogSetImage;->B0:Z

    .line 33
    .line 34
    :goto_2
    iget-object v1, v2, Lcom/mycompany/app/dialog/DialogSetImage;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    aget p1, p1, p2

    .line 39
    .line 40
    invoke-virtual {v1, v0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 41
    .line 42
    .line 43
    iget-object p1, v2, Lcom/mycompany/app/dialog/DialogSetImage;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 44
    .line 45
    sget-object v1, Lcom/mycompany/app/main/MainConst;->g0:[I

    .line 46
    .line 47
    aget p2, v1, p2

    .line 48
    .line 49
    invoke-virtual {p1, v0, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->C(II)V

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_3
    return v0
.end method
