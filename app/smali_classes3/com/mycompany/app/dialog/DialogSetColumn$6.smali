.class Lcom/mycompany/app/dialog/DialogSetColumn$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/dialog/DialogSetColumn;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetColumn;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetColumn$6;->b:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetColumn$6;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/dialog/DialogSetColumn;->k0:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetColumn$6;->b:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetColumn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetColumn$6;->b:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetColumn$6;->a:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    sget-object v2, Lcom/mycompany/app/dialog/DialogSetColumn;->l0:[I

    .line 9
    .line 10
    rem-int/lit8 p2, p2, 0x9

    .line 11
    .line 12
    aget p2, v2, p2

    .line 13
    .line 14
    iget v2, p1, Lcom/mycompany/app/dialog/DialogSetColumn;->j0:I

    .line 15
    .line 16
    if-ne v2, p2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetColumn;->j0:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v2, Lcom/mycompany/app/dialog/DialogSetColumn;->k0:[I

    .line 23
    .line 24
    rem-int/lit8 p2, p2, 0x6

    .line 25
    .line 26
    aget p2, v2, p2

    .line 27
    .line 28
    iget v2, p1, Lcom/mycompany/app/dialog/DialogSetColumn;->i0:I

    .line 29
    .line 30
    if-ne v2, p2, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetColumn;->i0:I

    .line 34
    .line 35
    :goto_0
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetColumn;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-static {p2}, Lcom/mycompany/app/dialog/DialogSetColumn;->B(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, v0, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_1
    return v1
.end method
