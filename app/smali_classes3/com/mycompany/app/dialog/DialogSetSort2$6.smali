.class Lcom/mycompany/app/dialog/DialogSetSort2$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetSort2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetSort2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSort2$6;->a:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetSort2;->n0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSort2$6;->a:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->l0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    sget-object p1, Lcom/mycompany/app/dialog/DialogSetSort;->C0:[I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    rem-int/2addr p2, v0

    .line 5
    aget p1, p1, p2

    .line 6
    .line 7
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSetSort2$6;->a:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 8
    .line 9
    iget v1, p2, Lcom/mycompany/app/dialog/DialogSetSort2;->f0:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v1, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput p1, p2, Lcom/mycompany/app/dialog/DialogSetSort2;->f0:I

    .line 16
    .line 17
    iget-object p2, p2, Lcom/mycompany/app/dialog/DialogSetSort2;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    sget-object v1, Lcom/mycompany/app/dialog/DialogSetSort;->x0:[I

    .line 22
    .line 23
    aget p1, v1, p1

    .line 24
    .line 25
    invoke-virtual {p2, v0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return v2
.end method
