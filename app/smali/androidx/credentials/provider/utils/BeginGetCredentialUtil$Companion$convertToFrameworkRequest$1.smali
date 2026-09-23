.class final Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/credentials/provider/BeginGetCredentialOption;",
        "Landroid/service/credentials/BeginGetCredentialOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroid/service/credentials/BeginGetCredentialOption;",
        "kotlin.jvm.PlatformType",
        "option",
        "Landroidx/credentials/provider/BeginGetCredentialOption;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/credentials/provider/BeginGetCredentialOption;

    .line 2
    .line 3
    const-string v0, "option"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/credentials/provider/a;->h()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Landroidx/credentials/provider/BeginGetCredentialOption;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/credentials/provider/BeginGetCredentialOption;->b:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/credentials/provider/BeginGetCredentialOption;->c:Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Landroidx/credentials/provider/a;->d(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/service/credentials/BeginGetCredentialOption;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
