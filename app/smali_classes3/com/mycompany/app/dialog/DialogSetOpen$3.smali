.class Lcom/mycompany/app/dialog/DialogSetOpen$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetOpen;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetOpen;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetOpen$3;->a:Lcom/mycompany/app/dialog/DialogSetOpen;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetOpen$3;->a:Lcom/mycompany/app/dialog/DialogSetOpen;

    .line 2
    .line 3
    const/4 p4, 0x2

    .line 4
    if-eqz p2, :cond_8

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x4

    .line 8
    if-eq p2, v0, :cond_6

    .line 9
    .line 10
    if-eq p2, p4, :cond_4

    .line 11
    .line 12
    const/4 p4, 0x3

    .line 13
    if-eq p2, p4, :cond_2

    .line 14
    .line 15
    if-eq p2, v1, :cond_0

    .line 16
    .line 17
    sget p2, Lcom/mycompany/app/dialog/DialogSetOpen;->g0:I

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    if-eqz p3, :cond_1

    .line 24
    .line 25
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 26
    .line 27
    or-int/lit8 p2, p2, 0x20

    .line 28
    .line 29
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 33
    .line 34
    and-int/lit8 p2, p2, -0x21

    .line 35
    .line 36
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    if-eqz p3, :cond_3

    .line 40
    .line 41
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 42
    .line 43
    or-int/lit8 p2, p2, 0x10

    .line 44
    .line 45
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 49
    .line 50
    and-int/lit8 p2, p2, -0x11

    .line 51
    .line 52
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    if-eqz p3, :cond_5

    .line 56
    .line 57
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 58
    .line 59
    or-int/lit8 p2, p2, 0x8

    .line 60
    .line 61
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 62
    .line 63
    return-void

    .line 64
    :cond_5
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 65
    .line 66
    and-int/lit8 p2, p2, -0x9

    .line 67
    .line 68
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 69
    .line 70
    return-void

    .line 71
    :cond_6
    if-eqz p3, :cond_7

    .line 72
    .line 73
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 74
    .line 75
    or-int/2addr p2, v1

    .line 76
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 77
    .line 78
    return-void

    .line 79
    :cond_7
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 80
    .line 81
    and-int/lit8 p2, p2, -0x5

    .line 82
    .line 83
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 84
    .line 85
    return-void

    .line 86
    :cond_8
    if-eqz p3, :cond_9

    .line 87
    .line 88
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 89
    .line 90
    or-int/2addr p2, p4

    .line 91
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 92
    .line 93
    return-void

    .line 94
    :cond_9
    iget p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 95
    .line 96
    and-int/lit8 p2, p2, -0x3

    .line 97
    .line 98
    iput p2, p1, Lcom/mycompany/app/dialog/DialogSetOpen;->f0:I

    .line 99
    .line 100
    return-void
.end method
