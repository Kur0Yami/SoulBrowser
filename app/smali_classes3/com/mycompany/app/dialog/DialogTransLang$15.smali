.class Lcom/mycompany/app/dialog/DialogTransLang$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTransLang;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransLang;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$15;->c:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogTransLang;->J0:I

    .line 2
    .line 3
    const-string v0, "<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes\'/></head><body><p>test</p></body></html>"

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang$15;->c:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 6
    .line 7
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogTransLang;->H0:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "soul_lang_"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->M1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogTransLang;->w0:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogTransLang$15$1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTransLang$15$1;-><init>(Lcom/mycompany/app/dialog/DialogTransLang$15;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
