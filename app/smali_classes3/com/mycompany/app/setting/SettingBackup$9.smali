.class Lcom/mycompany/app/setting/SettingBackup$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingBackup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingBackup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$9;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingBackup;->l2:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup$9;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p1}, Lcom/mycompany/app/setting/SettingBackup;->T0(ZZ)V

    .line 7
    .line 8
    .line 9
    sget p1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
