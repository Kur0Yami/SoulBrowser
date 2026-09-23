.class Lcom/mycompany/app/dialog/DialogSetDark$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetDark;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDark;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark$10;->c:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetDark$10;->a:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSetDark$10;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetDark;->y0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark$10;->c:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->n0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->n0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetDark$10;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_web

    sget-object p1, Lcom/mycompany/app/setting/SettingDisplay;->p2:[I

    rem-int/lit8 p2, p2, 0x2

    aget p1, p1, p2

    sget-object v2, Lcom/mycompany/app/setting/SettingDisplay;->q2:[I

    goto :goto_val

    :cond_web
    sget-object p1, Lcom/mycompany/app/dialog/DialogSetDark;->D0:[I

    rem-int/lit8 p2, p2, 0x3

    aget p1, p1, p2

    sget-object v2, Lcom/mycompany/app/dialog/DialogSetDark;->E0:[I

    :goto_val
    iget p2, p0, Lcom/mycompany/app/dialog/DialogSetDark$10;->a:I

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSetDark$10;->c:Lcom/mycompany/app/dialog/DialogSetDark;

    if-nez v0, :cond_1

    iput p1, p2, Lcom/mycompany/app/dialog/DialogSetDark;->t0:I

    goto :goto_0

    :cond_1
    iput p1, p2, Lcom/mycompany/app/dialog/DialogSetDark;->u0:I

    :goto_0
    iget-object p2, p2, Lcom/mycompany/app/dialog/DialogSetDark;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    if-eqz p2, :cond_2

    aget p1, v2, p1

    invoke-virtual {p2, v0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    :cond_2
    :goto_1
    return v1
.end method
