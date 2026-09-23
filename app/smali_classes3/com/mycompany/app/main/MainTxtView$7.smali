.class Lcom/mycompany/app/main/MainTxtView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$7;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView$7;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/MainTxtView;->g2:Ljava/lang/String;

    .line 4
    .line 5
    sget v1, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 6
    .line 7
    const-string v2, "Copied URL"

    .line 8
    .line 9
    invoke-static {v1, p1, v2, v0}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
