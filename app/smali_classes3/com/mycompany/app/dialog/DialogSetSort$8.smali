.class Lcom/mycompany/app/dialog/DialogSetSort$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:I

.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetSort;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetSort;[II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSort$8;->c:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetSort$8;->a:[I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSetSort$8;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/dialog/DialogSetSort;->o0:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSort$8;->c:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetSort;->n0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetSort;->n0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 2

    .line 1
    iget p1, p0, Lcom/mycompany/app/dialog/DialogSetSort$8;->b:I

    .line 2
    .line 3
    rem-int/2addr p2, p1

    .line 4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSort$8;->a:[I

    .line 5
    .line 6
    aget p1, p1, p2

    .line 7
    .line 8
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSetSort$8;->c:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 9
    .line 10
    iget v0, p2, Lcom/mycompany/app/dialog/DialogSetSort;->e0:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput p1, p2, Lcom/mycompany/app/dialog/DialogSetSort;->e0:I

    .line 17
    .line 18
    iget-object p2, p2, Lcom/mycompany/app/dialog/DialogSetSort;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcom/mycompany/app/dialog/DialogSetSort;->o0:[I

    .line 23
    .line 24
    aget p1, v0, p1

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-virtual {p2, v0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return v1
.end method
