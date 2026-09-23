.class Lcom/mycompany/app/dialog/DialogNewsLocale$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsLocale;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$21;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->S0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$21;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->I()V

    .line 6
    .line 7
    .line 8
    sget v1, Lcom/mycompany/app/dialog/DialogTransLang;->J0:I

    .line 9
    .line 10
    const-string v1, "<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes\'/></head><body><p>test</p></body></html>"

    .line 11
    .line 12
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->Q0:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "soul_lang_"

    .line 15
    .line 16
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->J0:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->M1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->K0:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogNewsLocale$21$1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogNewsLocale$21$1;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale$21;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
