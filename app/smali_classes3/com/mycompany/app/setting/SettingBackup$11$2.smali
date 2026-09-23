.class Lcom/mycompany/app/setting/SettingBackup$11$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingBackup$11;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingBackup$11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$11$2;->c:Lcom/mycompany/app/setting/SettingBackup$11;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup$11$2;->c:Lcom/mycompany/app/setting/SettingBackup$11;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingBackup$11;->a:Lcom/mycompany/app/setting/SettingBackup;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/setting/SettingBackup;->l2:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/setting/SettingBackup;->T0(ZZ)V

    .line 9
    .line 10
    .line 11
    sget v1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
