.class Lcom/mycompany/app/setting/SettingMenu$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/mycompany/app/setting/SettingMenu;


# direct methods
.method public constructor <init>(IILcom/mycompany/app/setting/SettingMenu;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/mycompany/app/setting/SettingMenu$20;->d:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/mycompany/app/setting/SettingMenu$20;->a:Z

    .line 7
    .line 8
    iput p1, p0, Lcom/mycompany/app/setting/SettingMenu$20;->b:I

    .line 9
    .line 10
    iput p2, p0, Lcom/mycompany/app/setting/SettingMenu$20;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingMenu;->s2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu$20;->d:Lcom/mycompany/app/setting/SettingMenu;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingMenu;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$20;->d:Lcom/mycompany/app/setting/SettingMenu;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    iget-object v2, p1, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget v3, p0, Lcom/mycompany/app/setting/SettingMenu$20;->c:I

    .line 14
    .line 15
    iget-boolean v4, p0, Lcom/mycompany/app/setting/SettingMenu$20;->a:Z

    .line 16
    .line 17
    iget v5, p0, Lcom/mycompany/app/setting/SettingMenu$20;->b:I

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    if-ne p2, v1, :cond_3

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    invoke-static {p1}, Lcom/mycompany/app/setting/SettingMenu;->E0(Lcom/mycompany/app/setting/SettingMenu;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 32
    .line 33
    invoke-virtual {p2, v5}, Lcom/mycompany/app/main/MenuIconAdapter;->E(I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 37
    .line 38
    invoke-virtual {p2, v6, v3}, Lcom/mycompany/app/main/MenuIconAdapter;->C(II)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingMenu;->R0()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, v6}, Lcom/mycompany/app/setting/SettingMenu;->V0(IZ)V

    .line 46
    .line 47
    .line 48
    return v1

    .line 49
    :cond_2
    invoke-virtual {v2, v5}, Lcom/mycompany/app/main/MenuIconAdapter;->E(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 53
    .line 54
    invoke-virtual {p2, v6, v3}, Lcom/mycompany/app/main/MenuIconAdapter;->C(II)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingMenu;->R0()V

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 62
    .line 63
    new-instance v0, Lcom/mycompany/app/setting/SettingMenu$20$1;

    .line 64
    .line 65
    invoke-direct {v0, p0, p2}, Lcom/mycompany/app/setting/SettingMenu$20$1;-><init>(Lcom/mycompany/app/setting/SettingMenu$20;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    return v1

    .line 72
    :cond_3
    const/4 v7, 0x2

    .line 73
    if-ne p2, v7, :cond_5

    .line 74
    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0, v5, v6, v6}, Lcom/mycompany/app/main/MenuIconAdapter;->K(III)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {v2, v5, v6, v6}, Lcom/mycompany/app/main/MenuIconAdapter;->K(III)V

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingMenu;->R0()V

    .line 85
    .line 86
    .line 87
    return v1

    .line 88
    :cond_5
    invoke-static {v5, v3, p1, v4}, Lcom/mycompany/app/setting/SettingMenu;->H0(IILcom/mycompany/app/setting/SettingMenu;Z)V

    .line 89
    .line 90
    .line 91
    :cond_6
    :goto_1
    return v1
.end method
