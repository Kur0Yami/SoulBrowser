.class Lcom/mycompany/app/setting/SettingMenu$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/mycompany/app/setting/SettingMenu;


# direct methods
.method public constructor <init>(IILcom/mycompany/app/setting/SettingMenu;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/mycompany/app/setting/SettingMenu$32;->d:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/setting/SettingMenu$32;->a:I

    .line 7
    .line 8
    iput p2, p0, Lcom/mycompany/app/setting/SettingMenu$32;->b:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/mycompany/app/setting/SettingMenu$32;->c:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu$32;->d:Lcom/mycompany/app/setting/SettingMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-ltz p1, :cond_6

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
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingMenu;->N0()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->c()V

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingMenu$32;->c:Z

    .line 26
    .line 27
    iget v2, p0, Lcom/mycompany/app/setting/SettingMenu$32;->b:I

    .line 28
    .line 29
    iget v3, p0, Lcom/mycompany/app/setting/SettingMenu$32;->a:I

    .line 30
    .line 31
    if-ne p1, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/setting/SettingMenu;->V0(IZ)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    const/16 v4, 0x3e8

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    if-ne v3, v4, :cond_4

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 45
    .line 46
    invoke-virtual {v1, p1, v5}, Lcom/mycompany/app/main/MenuIconAdapter;->v(II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingMenu;->R0()V

    .line 51
    .line 52
    .line 53
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 54
    .line 55
    new-instance v1, Lcom/mycompany/app/setting/SettingMenu$32$1;

    .line 56
    .line 57
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/setting/SettingMenu$32$1;-><init>(Lcom/mycompany/app/setting/SettingMenu$32;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 65
    .line 66
    invoke-virtual {v2, p1, v5}, Lcom/mycompany/app/main/MenuIconAdapter;->v(II)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    if-eqz v1, :cond_5

    .line 72
    .line 73
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 74
    .line 75
    invoke-virtual {v3, v2, p1, v5}, Lcom/mycompany/app/main/MenuIconAdapter;->K(III)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 80
    .line 81
    invoke-virtual {v3, v2, p1, v5}, Lcom/mycompany/app/main/MenuIconAdapter;->K(III)V

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingMenu;->R0()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/setting/SettingMenu;->V0(IZ)V

    .line 88
    .line 89
    .line 90
    :cond_6
    :goto_1
    return-void
.end method
