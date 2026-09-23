.class Lcom/mycompany/app/dialog/DialogWebVie2$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebVie2$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$6$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2$6$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2$6;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->b0:Lcom/mycompany/app/setting/SettingInfo;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 8
    .line 9
    sget v3, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 10
    .line 11
    const-string v4, "Copied URL"

    .line 12
    .line 13
    invoke-static {v3, v1, v4, v2}, Lcom/mycompany/app/main/MainUtil;->v(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->S0:Z

    .line 18
    .line 19
    return-void
.end method
