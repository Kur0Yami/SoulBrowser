.class Lcom/mycompany/app/setting/SettingLayout$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/mycompany/app/setting/SettingLayout;


# direct methods
.method public constructor <init>(IILcom/mycompany/app/setting/SettingLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/mycompany/app/setting/SettingLayout$34;->d:Lcom/mycompany/app/setting/SettingLayout;

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/setting/SettingLayout$34;->a:I

    .line 7
    .line 8
    iput p2, p0, Lcom/mycompany/app/setting/SettingLayout$34;->b:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/mycompany/app/setting/SettingLayout$34;->c:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLayout$34;->d:Lcom/mycompany/app/setting/SettingLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_8

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-ltz p1, :cond_8

    .line 13
    .line 14
    const/16 v1, 0x4b

    .line 15
    .line 16
    if-lt p1, v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingLayout;->P0()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->c()V

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingLayout$34;->c:Z

    .line 26
    .line 27
    iget v2, p0, Lcom/mycompany/app/setting/SettingLayout$34;->b:I

    .line 28
    .line 29
    iget v3, p0, Lcom/mycompany/app/setting/SettingLayout$34;->a:I

    .line 30
    .line 31
    if-ne p1, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/setting/SettingLayout;->a1(IZ)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    const/16 v4, 0x3e8

    .line 38
    .line 39
    if-ne v3, v4, :cond_6

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-static {v0, v2}, Lcom/mycompany/app/setting/SettingLayout;->E0(Lcom/mycompany/app/setting/SettingLayout;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 52
    .line 53
    iget v3, v0, Lcom/mycompany/app/setting/SettingLayout;->C1:I

    .line 54
    .line 55
    invoke-virtual {v2, p1, v3}, Lcom/mycompany/app/main/MenuIconAdapter;->v(II)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    goto :goto_0

    .line 60
    :cond_4
    const/4 v2, 0x0

    .line 61
    invoke-static {v0, v2}, Lcom/mycompany/app/setting/SettingLayout;->E0(Lcom/mycompany/app/setting/SettingLayout;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 69
    .line 70
    iget v3, v0, Lcom/mycompany/app/setting/SettingLayout;->C1:I

    .line 71
    .line 72
    invoke-virtual {v2, p1, v3}, Lcom/mycompany/app/main/MenuIconAdapter;->v(II)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    goto :goto_0

    .line 77
    :cond_6
    if-eqz v1, :cond_7

    .line 78
    .line 79
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 80
    .line 81
    iget v4, v0, Lcom/mycompany/app/setting/SettingLayout;->C1:I

    .line 82
    .line 83
    invoke-virtual {v3, v2, p1, v4}, Lcom/mycompany/app/main/MenuIconAdapter;->K(III)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_7
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 88
    .line 89
    iget v4, v0, Lcom/mycompany/app/setting/SettingLayout;->C1:I

    .line 90
    .line 91
    invoke-virtual {v3, v2, p1, v4}, Lcom/mycompany/app/main/MenuIconAdapter;->K(III)V

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingLayout;->U0()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/setting/SettingLayout;->a1(IZ)V

    .line 98
    .line 99
    .line 100
    :cond_8
    :goto_1
    return-void
.end method
