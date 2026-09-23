.class Lcom/mycompany/app/setting/SettingMenu$32$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/setting/SettingMenu$32;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMenu$32;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$32$1;->f:Lcom/mycompany/app/setting/SettingMenu$32;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingMenu$32$1;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu$32$1;->f:Lcom/mycompany/app/setting/SettingMenu$32;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu$32;->d:Lcom/mycompany/app/setting/SettingMenu;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingMenu;->J1:Lcom/mycompany/app/view/MyManagerGrid;

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/mycompany/app/main/MenuIconAdapter;->d()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingMenu;->J1:Lcom/mycompany/app/view/MyManagerGrid;

    .line 21
    .line 22
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/mycompany/app/main/MenuIconAdapter;->d()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    add-int/lit8 v3, v3, -0x1

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)V

    .line 31
    .line 32
    .line 33
    iget v2, p0, Lcom/mycompany/app/setting/SettingMenu$32$1;->c:I

    .line 34
    .line 35
    iget-boolean v0, v0, Lcom/mycompany/app/setting/SettingMenu$32;->c:Z

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/setting/SettingMenu;->V0(IZ)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method
