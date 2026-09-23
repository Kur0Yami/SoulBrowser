.class Lcom/mycompany/app/setting/SettingDisplay$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingDisplay$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDisplay$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$2$1;->c:Lcom/mycompany/app/setting/SettingDisplay$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay$2$1;->c:Lcom/mycompany/app/setting/SettingDisplay$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingDisplay$2;->a:Lcom/mycompany/app/setting/SettingDisplay;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingDisplay;->D0()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
