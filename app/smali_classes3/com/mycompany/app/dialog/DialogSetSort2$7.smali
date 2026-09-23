.class Lcom/mycompany/app/dialog/DialogSetSort2$7;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSort2$7;->a:Lcom/mycompany/app/dialog/DialogSetSort2;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSort2$7;->a:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->m0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    move p2, p1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSort2$7;->a:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->g0:Z

    .line 10
    .line 11
    if-ne v1, p2, :cond_1

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_1
    iput-boolean p2, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->g0:Z

    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetSort2;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    sget p2, Lnet/kaki87/soul2/testing/R$string;->order_descend:I

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    sget p2, Lnet/kaki87/soul2/testing/R$string;->order_ascend:I

    .line 26
    .line 27
    :goto_1
    const/4 v1, 0x3

    .line 28
    invoke-virtual {v0, v1, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 29
    .line 30
    .line 31
    :cond_3
    :goto_2
    return p1
.end method
