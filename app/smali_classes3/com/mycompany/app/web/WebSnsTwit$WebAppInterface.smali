.class Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebSnsTwit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebSnsTwit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsTwit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface;->a:Lcom/mycompany/app/web/WebSnsTwit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTwitImage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface;->a:Lcom/mycompany/app/web/WebSnsTwit;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/mycompany/app/web/WebSnsTwit;->o:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, v0, Lcom/mycompany/app/web/WebSnsTwit;->a:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface$1;-><init>(Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
