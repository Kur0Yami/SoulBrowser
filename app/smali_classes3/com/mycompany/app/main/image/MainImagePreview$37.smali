.class Lcom/mycompany/app/main/image/MainImagePreview$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownBlob$DialogBlobListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$37;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->l0:Z

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/main/image/MainImagePreview$37;->a:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-boolean p1, Lcom/mycompany/app/main/image/MainImagePreview;->E2:Z

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p2, p1, p3}, Lcom/mycompany/app/main/image/MainImagePreview;->c1(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget p1, Lnet/kaki87/soul2/testing/R$string;->down_complete:I

    .line 15
    .line 16
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
