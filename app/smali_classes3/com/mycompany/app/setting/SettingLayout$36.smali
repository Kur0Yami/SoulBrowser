.class Lcom/mycompany/app/setting/SettingLayout$36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/setting/SettingLayout;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLayout;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$36;->g:Lcom/mycompany/app/setting/SettingLayout;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/setting/SettingLayout$36;->c:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/setting/SettingLayout$36;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingLayout$36;->c:Z

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/setting/SettingLayout$36;->f:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingLayout$36;->g:Lcom/mycompany/app/setting/SettingLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v2, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v2, v2, Lcom/mycompany/app/setting/SettingLayout;->P1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/main/MenuIconAdapter;->J(ILandroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, v2, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v2, v2, Lcom/mycompany/app/setting/SettingLayout;->i2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/main/MenuIconAdapter;->J(ILandroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method
