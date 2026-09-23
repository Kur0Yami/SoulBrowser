.class Lcom/mycompany/app/setting/SettingSecret$6$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingSecret$6$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSecret$6$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSecret$6$1$1;->c:Lcom/mycompany/app/setting/SettingSecret$6$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecret$6$1$1;->c:Lcom/mycompany/app/setting/SettingSecret$6$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingSecret$6$1;->c:Lcom/mycompany/app/setting/SettingSecret$6;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSecret$6;->a:Lcom/mycompany/app/setting/SettingSecret;

    .line 6
    .line 7
    sget v2, Lcom/mycompany/app/setting/SettingSecret;->d2:I

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingSecret;->Q0()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSecret$6;->a:Lcom/mycompany/app/setting/SettingSecret;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 15
    .line 16
    sget v2, Lnet/kaki87/soul2/testing/R$string;->reset_noti:I

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingSecret$6;->a:Lcom/mycompany/app/setting/SettingSecret;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingSecret;->D0()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
