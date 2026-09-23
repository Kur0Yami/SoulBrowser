.class Lcom/mycompany/app/dialog/DialogSetImage$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetImage$10;->a:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetImage;->E0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImage$10;->a:Lcom/mycompany/app/dialog/DialogSetImage;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetImage;->C()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetImage;->d0:Z

    .line 9
    .line 10
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetImage;->w0:I

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, -0x1

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetImage;->x0:Z

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetImage;->y0:Z

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetImage;->z0:I

    .line 26
    .line 27
    if-eq v2, v5, :cond_1

    .line 28
    .line 29
    :cond_0
    iput v3, v0, Lcom/mycompany/app/dialog/DialogSetImage;->w0:I

    .line 30
    .line 31
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetImage;->x0:Z

    .line 32
    .line 33
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetImage;->y0:Z

    .line 34
    .line 35
    iput v5, v0, Lcom/mycompany/app/dialog/DialogSetImage;->z0:I

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetImage;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetImage;->B()Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetImage;->A0:I

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetImage;->B0:Z

    .line 55
    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetImage;->C0:Z

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetImage;->D0:I

    .line 63
    .line 64
    if-eq v2, v5, :cond_3

    .line 65
    .line 66
    :cond_2
    iput v4, v0, Lcom/mycompany/app/dialog/DialogSetImage;->A0:I

    .line 67
    .line 68
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetImage;->B0:Z

    .line 69
    .line 70
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetImage;->C0:Z

    .line 71
    .line 72
    iput v5, v0, Lcom/mycompany/app/dialog/DialogSetImage;->D0:I

    .line 73
    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImage;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetImage;->B()Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-virtual {v0, v4}, Lcom/mycompany/app/dialog/DialogSetImage;->D(Z)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
