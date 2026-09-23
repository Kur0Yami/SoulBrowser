.class Lcom/mycompany/app/dialog/DialogSetImage$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

.field public final synthetic b:Lcom/mycompany/app/dialog/DialogSetImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetImage;Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetImage$8;->b:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetImage$8;->a:Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetImage;->E0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage$8;->b:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImage;->l0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetImage;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetImage$8;->b:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetImage;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetImage$8;->a:Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;

    .line 10
    .line 11
    if-eqz v2, :cond_5

    .line 12
    .line 13
    iget-object v2, v2, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    sget-object v2, Lcom/mycompany/app/main/MainConst;->e0:[I

    .line 19
    .line 20
    array-length v2, v2

    .line 21
    rem-int/2addr p2, v2

    .line 22
    iget-boolean v2, p1, Lcom/mycompany/app/dialog/DialogSetImage;->d0:Z

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget v3, p1, Lcom/mycompany/app/dialog/DialogSetImage;->w0:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget v3, p1, Lcom/mycompany/app/dialog/DialogSetImage;->A0:I

    .line 30
    .line 31
    :goto_0
    if-ne v3, p2, :cond_3

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    if-eqz v2, :cond_4

    .line 35
    .line 36
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetImage;->w0:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_4
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetImage;->A0:I

    .line 40
    .line 41
    :goto_1
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetImage;->B()Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    :cond_5
    :goto_2
    return v1
.end method
