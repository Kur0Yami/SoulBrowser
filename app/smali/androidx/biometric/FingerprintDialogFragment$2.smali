.class Landroidx/biometric/FingerprintDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Landroidx/biometric/FingerprintDialogFragment;


# direct methods
.method public constructor <init>(Landroidx/biometric/FingerprintDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$2;->c:Landroidx/biometric/FingerprintDialogFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$2;->c:Landroidx/biometric/FingerprintDialogFragment;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/biometric/FingerprintDialogFragment;->g:Landroidx/biometric/BiometricViewModel;

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->g(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
