.class Lcom/mycompany/app/dialog/DialogSetFull$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFull$4;->a:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFull$4;->a:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 2
    .line 3
    const/16 p4, 0x8

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_5

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p2, v1, :cond_2

    .line 10
    .line 11
    const/4 p4, 0x2

    .line 12
    if-eq p2, p4, :cond_1

    .line 13
    .line 14
    const/4 p4, 0x3

    .line 15
    if-eq p2, p4, :cond_0

    .line 16
    .line 17
    sget p2, Lcom/mycompany/app/dialog/DialogSetFull;->y0:I

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    xor-int/lit8 p2, p3, 0x1

    .line 24
    .line 25
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogSetFull;->t0:Z

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogSetFull;->C(Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    xor-int/lit8 p2, p3, 0x1

    .line 32
    .line 33
    iput-boolean p2, p1, Lcom/mycompany/app/dialog/DialogSetFull;->s0:Z

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogSetFull;->C(Z)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetFull;->j0:Lcom/mycompany/app/view/MyLineImage;

    .line 40
    .line 41
    if-nez p2, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iput-boolean p3, p1, Lcom/mycompany/app/dialog/DialogSetFull;->r0:Z

    .line 45
    .line 46
    if-eqz p3, :cond_4

    .line 47
    .line 48
    move p4, v0

    .line 49
    :cond_4
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogSetFull;->C(Z)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_5
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSetFull;->i0:Lcom/mycompany/app/view/MyLineImage;

    .line 57
    .line 58
    if-nez p2, :cond_6

    .line 59
    .line 60
    :goto_0
    return-void

    .line 61
    :cond_6
    iput-boolean p3, p1, Lcom/mycompany/app/dialog/DialogSetFull;->q0:Z

    .line 62
    .line 63
    if-eqz p3, :cond_7

    .line 64
    .line 65
    move p4, v0

    .line 66
    :cond_7
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogSetFull;->C(Z)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
