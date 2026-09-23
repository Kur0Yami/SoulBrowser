.class Lcom/mycompany/app/dialog/DialogSetCookie$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetCookie;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetCookie;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetCookie$6;->c:Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetCookie$6;->a:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSetCookie$6;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetCookie;->k0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetCookie$6;->c:Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->j0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetCookie;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    sget-object p1, Lcom/mycompany/app/main/MainConst;->Q:[I

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetCookie$6;->a:I

    .line 4
    .line 5
    rem-int/2addr p2, v0

    .line 6
    aget p1, p1, p2

    .line 7
    .line 8
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSetCookie$6;->c:Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 9
    .line 10
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetCookie$6;->b:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget v2, p2, Lcom/mycompany/app/dialog/DialogSetCookie;->i0:I

    .line 16
    .line 17
    if-ne v2, p1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iput p1, p2, Lcom/mycompany/app/dialog/DialogSetCookie;->i0:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v2, p2, Lcom/mycompany/app/dialog/DialogSetCookie;->h0:I

    .line 24
    .line 25
    if-ne v2, p1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iput p1, p2, Lcom/mycompany/app/dialog/DialogSetCookie;->h0:I

    .line 29
    .line 30
    :goto_0
    iget-object p2, p2, Lcom/mycompany/app/dialog/DialogSetCookie;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 31
    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    sget-object v2, Lcom/mycompany/app/main/MainConst;->R:[I

    .line 35
    .line 36
    aget p1, v2, p1

    .line 37
    .line 38
    invoke-virtual {p2, v0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_1
    return v1
.end method
