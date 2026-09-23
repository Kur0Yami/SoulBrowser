.class Lcom/mycompany/app/setting/SettingDown$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingDown$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDown$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDown$7$1;->c:Lcom/mycompany/app/setting/SettingDown$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown$7$1;->c:Lcom/mycompany/app/setting/SettingDown$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingDown$7;->c:Lcom/mycompany/app/setting/SettingDown;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingDown;->c2:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingDown;->Y1:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingDown;->Z1:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
